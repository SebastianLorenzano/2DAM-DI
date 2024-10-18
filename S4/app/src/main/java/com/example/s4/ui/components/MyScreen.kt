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
import androidx.compose.foundation.layout.wrapContentHeight
import androidx.compose.foundation.layout.wrapContentSize
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
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
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

@Composable
fun MyScreen() {
    var myName by remember { mutableStateOf("") }
    var myEmail by remember { mutableStateOf("") }
    var myLocation by remember { mutableStateOf("") }
    var myCountry by remember { mutableStateOf("") }
    var txtName by remember { mutableStateOf("") }
    var txtEmail by remember { mutableStateOf("") }
    var txtLocation by remember { mutableStateOf("") }
    var txtCountry by remember { mutableStateOf("") }
    val text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec venenatis placerat lacus vitae posuere. Nam ullamcorper eros vel felis tincidunt, rutrum pharetra dolor tempor. Aliquam non dui in odio scelerisque commodo vitae interdum leo. Duis convallis cursus velit id hendrerit. Pellentesque ac dui maximus, vehicula turpis nec, fermentum magna. Nulla ut condimentum metus. Nulla viverra felis nec justo commodo rhoncus. Integer convallis dapibus leo in luctus. Ut sed congue leo. Proin ultrices ante eget urna tincidunt, at tincidunt magna porta. Duis auctor consectetur mi, volutpat ullamcorper mi. Integer laoreet mattis suscipit. Aenean laoreet elit non risus rutrum commodo. Sed ut porttitor quam, vitae convallis lacus. Pellentesque habitant morbi tristique " +
            "senectus et netus et malesuada fames ac turpis egestas. Morbi tempus elementum porta. Pellentesque faucibus, orci vestibulum dignissim facilisis, nisl orci ornare eros, id pharetra lacus nunc eu diam. Nullam tincidunt, nisi vitae porttitor aliquet, nunc mauris interdum massa, in accumsan nunc sem bibendum ipsum. In sagittis, erat ac viverra luctus, tellus libero vulputate elit, vitae pellentesque purus eros eget risus. Aenean dictum nulla sed dolor pharetra pulvinar." +
            "Morbi viverra maximus ornare. Nunc sodales, felis nec porttitor hendrerit, lorem ligula luctus risus, sit amet lacinia risus leo a massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque pharetra urna eget tortor mattis, ac maximus nulla congue. Aenean varius efficitur magna dapibus bibendum. Maecenas sed lacus a nibh commodo lacinia sit amet sed enim. Morbi at mi convallis risus dignissim tempus sit amet congue massa. Cras in ipsum in massa sagittis ullamcorper non ac diam. Pellentesque hendrerit velit neque, non laoreet metus aliquam id. Nulla ullamcorper turpis at elit pulvinar, non finibus odio venenatis. Donec et mi vulputate, imperdiet felis sed, tincidunt risus. Integer sed lacinia nibh, et eleifend diam." + "\n" +
            "Aenean vestibulum tortor sit amet ante condimentum, at auctor sem mattis. In sed velit velit. Cras in ligula quis nisi feugiat tincidunt. Etiam lobortis orci eget urna tristique sodales id ac ipsum. Nunc rhoncus pellentesque ligula, efficitur tempor est bibendum sed. Ut faucibus suscipit fringilla. Suspendisse ultricies, nisi sagittis varius vestibulum, mauris dolor posuere neque, dapibus tempus purus mauris nec sem. Mauris bibendum sem sed eros porta efficitur. Sed erat metus, porttitor non vestibulum vitae, cursus sed enim.\n" +
            "Vivamus mollis nulla sed erat scelerisque, non consequat ligula blandit. Quisque tortor purus, imperdiet vitae est eget, aliquam interdum odio. Aliquam pharetra eu ante ac vestibulum. Phasellus quis eros id urna condimentum bibendum. Praesent in tortor elit. Ut interdum finibus suscipit. Donec dapibus, mi eu aliquam dapibus, orci est dapibus mi, porttitor gravida ante sapien sit amet massa. Nam non faucibus metus."
    Column(Modifier.fillMaxSize()) {
        Box(Modifier.fillMaxWidth().height(100.dp).background(color = Color.Black)) {
            Text(text = "Screen", modifier = Modifier.align(Alignment.Center),
                fontSize = 35.sp, color = Color.White) }

        Column(Modifier.wrapContentHeight().background(color = Color.LightGray)) {
            Spacer(modifier = Modifier.height(10.dp))
            Row(modifier = Modifier.fillMaxWidth().horizontalScroll(rememberScrollState()))
            {
                repeat(20) {
                    Box(Modifier.background(color = Color.Gray,
                        shape = RoundedCornerShape(100.dp)).width(55.dp).height(55.dp))
                    Spacer(Modifier.width(10.dp))
                }
            }
            Spacer(modifier = Modifier.height(10.dp))
        }
        Spacer(modifier = Modifier.height(20.dp))
        Row(modifier = Modifier.fillMaxWidth().height(180.dp).
            align(Alignment.CenterHorizontally)) {
            Spacer(modifier = Modifier.width(20.dp))
            Box(modifier = Modifier.background(color = Color.Cyan,
                shape = RoundedCornerShape(10.dp)).width(150.dp).height(250.dp))
            Spacer(modifier = Modifier.width(30.dp))
            Box(modifier = Modifier.verticalScroll(rememberScrollState()).width(170.dp)) {
                Text(modifier = Modifier.fillMaxSize(),
                    text = text) }
        }
        Spacer(modifier = Modifier.height(30.dp))
        Text(text = "Formulario",
            modifier = Modifier.align(Alignment.CenterHorizontally), fontSize = 35.sp)
        Spacer(modifier = Modifier.height(25.dp))
        Row {
            TextField(
                modifier = Modifier.width(190.dp),
                value = myName,
                onValueChange = { myName = it },
                label = { Text("Nombre") })
            Text(text = txtName, textAlign = TextAlign.Center,
                modifier = Modifier.weight(1f).align(Alignment.CenterVertically))
        }
        Spacer(modifier = Modifier.height(15.dp))
        Row {
            TextField(
                modifier = Modifier.width(190.dp),
                value = myEmail,
                onValueChange = { myEmail = it },
                label = { Text("Email") })
            Text(text = txtEmail, textAlign = TextAlign.Center,
                modifier = Modifier.weight(1f).align(Alignment.CenterVertically))
        }
        Spacer(modifier = Modifier.height(15.dp))
        Row {
            TextField(
                modifier = Modifier.width(190.dp),
                value = myLocation,
                onValueChange = { myLocation = it },
                label = { Text("Dirección") })
            Text(text = txtLocation, textAlign = TextAlign.Center,
                modifier = Modifier.weight(1f).align(Alignment.CenterVertically))
        }
        Spacer(modifier = Modifier.height(15.dp))
        Row {
            TextField(
                modifier = Modifier.width(190.dp),
                value = myCountry,
                onValueChange = { myCountry = it },
                label = { Text("País") })
            Text(text = txtCountry, textAlign = TextAlign.Center,
                modifier = Modifier.weight(1f).align(Alignment.CenterVertically))
        }
        Spacer(modifier = Modifier.height(15.dp))
        Button(modifier = Modifier.align(Alignment.CenterHorizontally),
            onClick = {
                txtName = myName
                txtEmail = myEmail
                txtLocation = myLocation
                txtCountry = myCountry }) {
            Text(text = "Actualizar") }
}
}


@Preview(showBackground = true)
@Composable
fun TestMyScreen()
{
    MyScreen()
}