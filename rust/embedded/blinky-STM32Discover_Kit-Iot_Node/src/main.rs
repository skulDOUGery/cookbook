#![deny(unsafe_code)]
#![no_main]
#![no_std]

use cortex_m_rt::entry;
use hal::{delay::Delay, pac, prelude::*};
use panic_itm as _;
use stm32l4 as _;
use stm32l4xx_hal as hal;

#[entry]
fn main() -> ! {
    // Take ownership of the stm32l475 device peripherals.
    let device_periphs = pac::Peripherals::take().unwrap();

    // Constrain and configure the RCC (clock control) peripheral.
    let mut rcc = device_periphs.RCC.constrain();
    let mut flash = device_periphs.FLASH.constrain();
    let mut pwr = device_periphs.PWR.constrain(&mut rcc.apb1r1);

    // Set up the system clock and freeze it (finalize configuration).
    let clocks = rcc.cfgr.freeze(&mut flash.acr, &mut pwr);

    // Acquire GPIOA and configure PA5 as a push-pull output.
    let mut gpioa = device_periphs.GPIOA.split(&mut rcc.ahb2);
    let mut ld1 = gpioa
        .pa5
        .into_push_pull_output(&mut gpioa.moder, &mut gpioa.otyper);

    let half_period = 500_u16;
    let core_periphs = cortex_m::Peripherals::take().unwrap();
    let mut delay = Delay::new(core_periphs.SYST, clocks);

    loop {
        ld1.set_high();
        delay.delay_ms(half_period);

        ld1.set_low();
        delay.delay_ms(half_period);
    }
}
