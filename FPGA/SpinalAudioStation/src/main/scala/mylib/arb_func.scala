package mylib

import scala.math._

// internally used funtions
object Math {
  def log2(x: Int) : Int = {
    val result = log10(x)/log10(2.0)
    return result.asInstanceOf[Int]
  }
}
