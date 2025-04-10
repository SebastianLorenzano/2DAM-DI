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
    var myText by remember { mutableStateOf("Pulsa Aquí") }

    Button(onClick = {myText = "Botón pulsado"}) {
        Text(text = myText)
    }
}