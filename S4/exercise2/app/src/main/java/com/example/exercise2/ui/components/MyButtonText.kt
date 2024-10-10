package com.example.exercise2.ui.components

import androidx.collection.emptyLongSet
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue

@Composable
fun MyButtonText() {
    var buttonPressed by remember { mutableStateOf(false) }
    var button = Button(onClick = {buttonPressed=!buttonPressed}) {
        if (!buttonPressed)
            Text(text = "Pulsa Aquí")
        else
            Text(text = "Botón Pulsado")
    }
}