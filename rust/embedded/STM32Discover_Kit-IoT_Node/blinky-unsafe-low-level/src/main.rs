#![no_main]
#![no_std]

use core::ptr;
use cortex_m_rt::entry;
use panic_itm as _;
use stm32l4 as _;
use stm32l4::stm32l4x5::{gpioa, gpiob};
use stm32l4xx_hal::{pac, prelude::*};

#[entry]
fn main() -> ! {
    unsafe {
        const RCC_AHB2: u32 = 0x4002_104C;
        ptr::write_volatile(RCC_AHB2 as *mut u32, 1 << 0);
    }
    loop {
        unsafe {
            // A magic address!
            const GPIOA_BSRR: u32 = 0x4800_0018;
            const GPIOB_BSRR: u32 = 0x4800_0418;

            // Turn on LD1
            ptr::write_volatile(GPIOA_BSRR as *mut u32, 1 << 5);

            // Turn on LD2
            ptr::write_volatile(GPIOB_BSRR as *mut u32, 1 << 14);

            // TODO: Busy-Wait Loop

            // Turn off LD1
            ptr::write_volatile(GPIOA_BSRR as *mut u32, 1 << (5 + 16));

            // Turn off LD2
            ptr::write_volatile(GPIOB_BSRR as *mut u32, 1 << (14 + 16));
        }
    }
}

fn init() -> (&'static gpioa::RegisterBlock, &'static gpiob::RegisterBlock) {
    // Take ownership of the stm32l475 cortex m and device peripherals.
    let device_periphs = pac::Peripherals::take().unwrap();

    // Constrain and configure the RCC (clock control) peripheral.
    let mut rcc = device_periphs.RCC.constrain();
    let mut flash = device_periphs.FLASH.constrain();
    let mut pwr = device_periphs.PWR.constrain(&mut rcc.apb1r1);

    // Set up the system clock and freeze it (finalize configuration).
    rcc.cfgr.freeze(&mut flash.acr, &mut pwr);

    // Acquire GPIOA and configure PA5 as a push-pull output.
    let mut gpioa = device_periphs.GPIOA.split(&mut rcc.ahb2);
    let mut gpiob = device_periphs.GPIOB.split(&mut rcc.ahb2);
    gpioa
        .pa5
        .into_push_pull_output(&mut gpioa.moder, &mut gpioa.otyper);
    gpiob
        .pb14
        .into_push_pull_output(&mut gpiob.moder, &mut gpiob.otyper);

    (unsafe { &*stm32l4::stm32l4x5::GPIOA::ptr() }, unsafe {
        &*stm32l4::stm32l4x5::GPIOB::ptr()
    })
}
