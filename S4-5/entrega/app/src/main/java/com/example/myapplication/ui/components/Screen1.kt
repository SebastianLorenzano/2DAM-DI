package com.example.myapplication.ui.components

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.myapplication.R

@Composable
fun Screen1() {
    var list = listOf(
        Asignatura("Matemáticas", R.drawable.matematicas),
        Asignatura("Geografía", R.drawable.geografia),
        Asignatura("Educación Física", R.drawable.ef),
        Asignatura("Física", R.drawable.fisica),
        Asignatura("Religión", R.drawable.religion),
    )
    MyLazyColumn(list = list)
}

@Composable
fun MyLazyColumn(modifier: Modifier = Modifier, list: List<Asignatura>) {
    LazyColumn(modifier = modifier.padding(horizontal = 15.dp).fillMaxWidth()) {
        items(list) { asign ->
            Column(Modifier.fillMaxWidth()) {
                Text(asign.asignatura, Modifier.align(Alignment.CenterHorizontally))
                Box(
                    Modifier
                        .fillMaxWidth()
                        .height(150.dp)
                        .clip(shape = RoundedCornerShape(20.dp))
                ) {
                    Image(
                        painter = painterResource(asign.imageId),
                        contentDescription = "",
                        contentScale = ContentScale.Crop
                    )
                }
                Spacer(modifier = Modifier.height(20.dp))
            }
        }

    }
}

data class Asignatura (val asignatura: String, val imageId: Int)

@Preview(showBackground = true)
@Composable
fun Screen1Preview() {
    Screen1()
}