package com.example.variant11;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class BasicAdditionTest {
    @Test
    void addsPositiveNumbers() {
        assertEquals(7, BasicAddition.add(3, 4));
    }

    @Test
    void addsNegativeAndPositiveNumbers() {
        assertEquals(-2, BasicAddition.add(-5, 3));
    }

    @Test
    void addsZero() {
        assertEquals(9, BasicAddition.add(9, 0));
    }
}
