Public Class ChangingTides
    'This is the main class
    Private Sub Form_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Initiates when the form is loaded
    End Sub

    Private Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles button1.Click
        'Handles the click event of the button
    End Sub

    Private Sub textbox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles textbox1.TextChanged
        'Handles the text changed event of the textbox
    End Sub

    Private Sub listbox1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles listbox1.SelectedIndexChanged
        'Handles the selected index changed event of the listbox
    End Sub
    
    Private Function ChangeTides() As Double
        'This function calculates the change in the tide
        Dim result As Double
        'Code to calculate result goes here
        Return result
    End Function
    
    Private Sub CalculateTideChange()
        'This subroutine calculates and displays the tide change
        Dim tideChange As Double
        'Calculate the tide change
        tideChange = ChangeTides()
        'Display the result
        textbox1.Text = tideChange.ToString()
    End Sub
    
    Private Sub UpdateListbox()
        'This subroutine updates the contents of the listbox
        'Code to update the listbox goes here
    End Sub
    
    Private Sub UpdateGraph()
        'This subroutine updates the graph with the latest data
        'Code to update the graph goes here
    End Sub

End Class