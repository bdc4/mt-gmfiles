//work out the percentage value
percentage = round(((x-leftLimit)/(rightLimit-leftLimit))*100);

//if the mouse button is not clicked
if (grab = false)
{
    exit;
}

else//otherwise change its coordinates

{
    //if we slide within the constraints, update the sliders coordinate
    if ((mouse_x + xx) > leftLimit) && ((mouse_x + xx < rightLimit))
    {
        x = mouse_x + xx;
    }
    else if ((mouse_x + xx) < leftLimit)//set at left limit if user wants to slide it too far left
    {
        x = leftLimit;
    }
    else if ((mouse_x + xx) > rightLimit)//set at right limit if user wants to slide it too far right
    {
        x = rightLimit;
    }
}



