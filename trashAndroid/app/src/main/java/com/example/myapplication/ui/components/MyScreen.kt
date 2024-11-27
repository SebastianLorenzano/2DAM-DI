package com.example.myapplication.ui.components

import android.widget.Space
import androidx.compose.foundation.background
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Outline
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

@Composable
@Preview (showBackground = true)
fun MyScreen(modifier: Modifier = Modifier)  {
    Column (Modifier.fillMaxSize()) {
        Box(Modifier
            .background(Color.Black)
            .fillMaxWidth()
            .height(120.dp)
        )
        {
            Text(
                text = "Pepe",
                Modifier.align(Alignment.Center),
                color = Color.White,
                fontSize = 36.sp,)
        }
        Box(Modifier
            .background(Color.Gray)
            .fillMaxWidth()
            .height(80.dp)
        )
        {
            Column {
                Spacer(Modifier.height(10.dp))
                Row(Modifier
                    .horizontalScroll(rememberScrollState())
                    .fillMaxWidth()
                )
                {
                    repeat(20) {
                        Box(Modifier
                            .width(60.dp)
                            .height(60.dp)
                            .background(color = Color.Blue)
                        )
                        Spacer(Modifier.width(10.dp))
                    }


                }
                Spacer(Modifier.height(10.dp))
            }
        }
        Column(Modifier
            .width(100.dp)
            .fillMaxHeight()
            .background(color = Color.Yellow)
            .verticalScroll(rememberScrollState())
        )
        {
            Spacer(Modifier.height(10.dp))
            repeat(20)
            {
                Box(Modifier
                    .width(80.dp)
                    .height(80.dp)
                    .align(Alignment.CenterHorizontally)
                    .background(color = Color.Black)
                )
                Spacer(Modifier.height(10.dp))
            }
        }

    }
}