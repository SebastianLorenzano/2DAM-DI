package com.example.myapplication.ui.components

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
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.provider.FontsContractCompat.Columns

@Composable
@Preview (showBackground = true)
fun MyScreen(modifier: Modifier = Modifier) {
    Column(Modifier
        .fillMaxSize()
    )
    {
        Box (Modifier
            .height(120.dp)
            .fillMaxWidth()
            .background(Color.Red)

        )
        {
            Text(
                text = "Screen",
                fontSize = 36.sp,
                modifier = Modifier.align(Alignment.Center))
        }
        Box(Modifier
            .background(Color.Gray)
            .fillMaxWidth()
            .height(80.dp)
        )
        {
            Column {
                Spacer(Modifier.height(10.dp))

                Row (Modifier
                    .fillMaxWidth()
                    .horizontalScroll(rememberScrollState())
                    .height(60.dp)
                )
                {


                    repeat(20)
                    {
                        Box(Modifier
                            .height(60.dp)
                            .width(60.dp)
                            .background(Color.Cyan)
                        )
                        Spacer(Modifier.width(10.dp))
                    }
                }
            }
        }

    }

}
