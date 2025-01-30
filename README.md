# Flutter-notepad-app

This Notes App is a simple CRUD (Create, Read, Update, Delete) application built using Flutter and Firebase Firestore. It allows users to add, view, edit, and delete notes in real-time.

Features

Add new notes

View notes in a list format

Edit existing notes

Delete notes with confirmation

Real-time updates using Firestore

Screens Breakdown:

HomeScreen

Displays a list of notes fetched from Firestore.

Allows users to navigate to the Add or Edit Note screens.

Includes delete functionality for each note with a Snackbar confirmation.

AddNoteScreen

Contains a form to input a note.

Saves the note to Firestore on submission.

EditNoteScreen

Pre-fills note details based on the selected note.

Updates the note in Firestore after editing.

Firebase Integration

The project uses Firebase Firestore for real-time data synchronization.
