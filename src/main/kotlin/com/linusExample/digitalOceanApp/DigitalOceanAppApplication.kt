package com.linusExample.digitalOceanApp

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class DigitalOceanAppApplication

fun main(args: Array<String>) {
	runApplication<DigitalOceanAppApplication>(*args)
}
