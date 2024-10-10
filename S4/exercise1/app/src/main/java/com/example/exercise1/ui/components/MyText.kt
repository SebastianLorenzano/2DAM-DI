package com.example.exercise1.ui.components

import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.TextUnit


@Composable
fun MyText(string: String, textUnit: TextUnit, color: Color, modifier: Modifier) {
    Text(
        text = string,
        fontSize = textUnit, color = color, modifier = modifier
    )
}
