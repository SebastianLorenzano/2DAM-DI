package com.example.myapplication.ui.components

import android.service.autofill.OnClickAction
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
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

@Composable
@Preview (showBackground = true)
fun MyLogin(modifier: Modifier = Modifier)
{
    var usertext by remember { mutableStateOf("") }
    var passtext by remember { mutableStateOf("") }
    var text3 by remember { mutableStateOf("") }
    var textcolor by remember { mutableStateOf(Color.White) }

    Box(Modifier.fillMaxSize()) {
        Column (Modifier.align(Alignment.Center)){
            TextField(
                value = usertext,
                onValueChange = { usertext = it },
                label = { Text("Username")}
            )
            Spacer(Modifier.height(40.dp))

            TextField(
                value = passtext,
                onValueChange = { passtext = it },
                label = { Text("Password")}
            )
            Spacer(Modifier.height(20.dp))
            Text(text = text3,
                color = textcolor)
            Button(
                onClick = {
                    if (UserLogIn(usertext, passtext))  {
                        text3 = "You logged in correctly!"
                        textcolor = Color.Green
                    }
                    else {
                        text3 = "You failed to log in!"
                        textcolor = Color.Red

                    }
                },
                modifier = Modifier.align(alignment = Alignment.CenterHorizontally))
            {
                Text("Login")
            }
        }
    }

}

fun UserLogIn(string1 : String, string2: String): Boolean {
    return (string1 == "1234" && string2 == "1234")
}



