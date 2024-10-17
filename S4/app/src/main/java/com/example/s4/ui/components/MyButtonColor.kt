package com.example.exercise2.ui.components

import androidx.collection.emptyLongSet
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp

@Composable
fun MyButtonColor(text1: String, text2: String, color: Color) {
    var myText by remember { mutableStateOf(text1) }
    var myBackgroundColor by remember { mutableStateOf(Color.DarkGray) }
    var myColor by remember { mutableStateOf(Color.White) }
    var myBorder by remember { mutableStateOf(BorderStroke(1.dp, Color.Black)) }
    var myShape by remember { mutableStateOf(RoundedCornerShape(20.dp)) }
    Button(onClick = {
        myText = "Ha cambiado el texto!"
        myBackgroundColor = color
        myColor = Color.Black
        myBorder = BorderStroke(3.dp, Color.Black)
        myShape = RoundedCornerShape(4.dp)
        myText = text2 },
        colors = ButtonDefaults.buttonColors(
            contentColor = myColor,
            containerColor = myBackgroundColor),
        border = myBorder,
        shape = myShape)
    {
        Text(text = myText)
    }
}