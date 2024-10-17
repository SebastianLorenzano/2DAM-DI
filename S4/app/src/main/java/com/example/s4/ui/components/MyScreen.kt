package com.example.s4.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

@Composable
fun MyScreen() {
    var user by remember { mutableStateOf("") }
    var pass by remember { mutableStateOf("") }
    var myTextValue by remember { mutableStateOf("") }
    var myTextColor by remember { mutableStateOf(Color.White) }
    Column(Modifier.fillMaxSize()) {
        Box(Modifier.fillMaxWidth().height(100.dp)) {
            Text(text = "Screen", modifier = Modifier.align(Alignment.Center), fontSize = 35.sp) }

        Column(Modifier.background(color = Color.Gray).height(75.dp)) {
            Spacer(modifier = Modifier.height(10.dp))
            Row(modifier = Modifier.fillMaxWidth().horizontalScroll(rememberScrollState())
            ) {
                repeat(20) {
                    Box(Modifier.background(color = Color.Yellow,
                        shape = RoundedCornerShape(100.dp)).width(50.dp).height(50.dp))
                    Spacer(Modifier.width(10.dp))
                }

            }
            Spacer(modifier = Modifier.height(10.dp))
        }



    }
}


@Preview(showBackground = true)
@Composable
fun TestMyScreen()
{
    MyScreen()
}