//
//  WaitingPenguin.swift
//  PeevedPenguins
//
//  Created by Carol on 7/9/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//


class WaitingPenguin: CCSprite {
    
    func didLoadFromCCB() {
        // generate a random number between 0.0 and 2.0
        let delay = CCRANDOM_0_1() * 2
        // call method to start animation after random delay
        scheduleOnce("startBlinkAndJump", delay: CCTime(delay))
    }
    
    func startBlinkAndJump() {
        // timelines can be referenced and run by name using the animation manager
        animationManager.runAnimationsForSequenceNamed("BlinkAndJump")
    }
    
}
