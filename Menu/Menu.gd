extends Control

func _on_Begin_pressed():
   get_tree().change_scene("res://Levels/Level1.tscn")

func _on_Quit_pressed():
  get_tree().quit()

