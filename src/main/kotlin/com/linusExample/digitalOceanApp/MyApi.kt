package com.linusExample.digitalOceanApp

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class MyApi {

    @GetMapping("/hello")
    fun getHelloWorld(): String = "hello Schibsted"
}