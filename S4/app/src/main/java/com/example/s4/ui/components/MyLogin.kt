package com.example.exercises.components

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.material3.TextField
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp


@Composable
fun MyLogin() {
    var user by remember { mutableStateOf("") }
    var pass by remember { mutableStateOf("") }
    var myTextValue by remember { mutableStateOf("") }
    var myTextColor by remember { mutableStateOf(Color.White) }
    Box(Modifier.fillMaxSize()) {
        Column(Modifier.align(Alignment.Center)) {
            TextField(
                value = user,
                onValueChange = { user = it },
                label = { Text("Username") })
            Spacer(modifier = Modifier.height(40.dp))
            TextField(
                value = pass,
                onValueChange = { pass = it },
                label = { Text("Password") })
            Spacer(modifier = Modifier.height(10.dp))
            Text(modifier = Modifier.align(Alignment.CenterHorizontally), text = myTextValue, color = myTextColor)
            Spacer(modifier = Modifier.height(15.dp))
            Button(modifier = Modifier.align(Alignment.CenterHorizontally),onClick = {
                if (CheckPassword(user, pass)) {
                    myTextValue = "Usuario Correcto"
                    myTextColor = Color.Green
                } else {
                    myTextValue = "Usuario Incorrecto"
                    myTextColor = Color.Red
                }
            }
            ) {
                Text(text = "Acceder", color = Color.White)
            }
        }
    }

}

fun CheckPassword(username: String, password: String):Boolean {
    return username == "admin" && password == "1234"
}
@Preview
@Composable
fun TestMyLogin()
{
    MyLogin()
}