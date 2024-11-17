
@file:OptIn(ExperimentalMaterial3Api::class)

package com.example.week5exercise1

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.AccountCircle
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Favorite
import androidx.compose.material.icons.filled.Home
import androidx.compose.material3.BottomAppBar
import androidx.compose.material3.CenterAlignedTopAppBar
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.navigation.NavHostController
import androidx.navigation.compose.rememberNavController
import com.example.task5.ui.components.Screen1
import com.example.task5.ui.components.Screen2
import com.example.task5.ui.components.Screen3
import com.example.task5.ui.theme.Task5Theme
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable

class MainActivity : ComponentActivity() {
    @OptIn(ExperimentalMaterial3Api::class)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            Task5Theme {
                Screen(modifier = Modifier.fillMaxSize())
            }
        }
    }
}

@Composable
fun Screen(modifier: Modifier) {
    val navController = rememberNavController()
    Scaffold(
        topBar = {
            CenterAlignedTopAppBar(
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = Color(0xffcce7b1)
                ),
                title = { Text("Asignaturas") },
                navigationIcon = {
                    BackIcon()
                },
                actions = {
                    UserIcon(size = 50.dp)
                }
            )
        },
        bottomBar = {
            BottomAppBar(
                containerColor = Color(0xFFCDE7B0)
            ) {
                Row (Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceEvenly)
                {
                    HomeIcon(Modifier.clickable{
                        navController.navigate("screen1")
                    }, 30.dp)
                    EditIcon(Modifier.clickable{
                        navController.navigate("screen2")
                    }, 30.dp)
                    HeartIcon(Modifier.clickable{
                        navController.navigate("screen3")
                    }, 30.dp)
                }
            }
        },
        modifier = Modifier.fillMaxSize()) { innerPadding ->
        MyNavControllerCustom(
            navController,
            Modifier.padding(innerPadding))
    }
}

@Composable
fun MyNavControllerCustom(navController: NavHostController, modifier: Modifier) {
    NavHost(
        navController = navController, startDestination = "screen1",
        modifier = modifier) {
        composable("screen1") { Screen1() }
        composable("screen2") { Screen2() }
        composable("screen3") { Screen3() }
    }
}

@Composable
fun BackIcon(modifier: Modifier = Modifier, size: Dp = 30.dp) {
    Icon(
        imageVector = Icons.AutoMirrored.Filled.ArrowBack,
        contentDescription = "Back",
        tint = Color.Black,
        modifier = modifier.size(size)

    )
}

@Composable
fun UserIcon(modifier: Modifier = Modifier, size: Dp = 30.dp) {
    Icon(
        imageVector = Icons.Filled.AccountCircle,
        contentDescription = "User",
        tint = Color.Black,
        modifier = modifier.size(size)
    )
}

@Composable
fun HomeIcon(modifier: Modifier = Modifier, size: Dp = 30.dp) {
    Icon(
        imageVector = Icons.Filled.Home,
        contentDescription = "House",
        tint = Color.Black,
        modifier = modifier.size(size)
    )
}

@Composable
fun EditIcon(modifier: Modifier = Modifier, size: Dp = 30.dp) {
    Icon(
        imageVector = Icons.Filled.Edit,
        contentDescription = "Edit",
        tint = Color.Black,
        modifier = modifier.size(size)
    )
}
@Composable
fun HeartIcon(modifier: Modifier = Modifier, size: Dp = 30.dp) {
    Icon(
        imageVector = Icons.Filled.Favorite,
        contentDescription = "Heart",
        tint = Color.Red,
        modifier = modifier.size(size)
    )
}
@Preview(showBackground = true)
@Composable
fun Task5Theme() {
    Screen(modifier = Modifier.fillMaxSize())
}