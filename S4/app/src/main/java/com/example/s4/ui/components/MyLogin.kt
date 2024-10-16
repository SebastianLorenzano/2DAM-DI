package com.example.exercises.components

import androidx.compose.foundation.layout.Column
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.material3.TextField
import androidx.compose.ui.Modifier

@Composable
fun MyLogin(modifier : Modifier = Modifier) {
    var user by remember { mutableStateOf("") }
    var pass by remember { mutableStateOf("Password") }
    Column(modifier) {
        TextField(
            value = user,
            onValueChange = {user = it},
            label = {Text("Username")})
        TextField(
            value = pass,
            onValueChange = {pass = it},
            label = {Text("Password")})
    }
}