const buttons = document.querySelectorAll('.butoane .button'); // Select all elements with class "button" inside .butoane

const contentArea = document.querySelector('.content-area'); // Get the content area

buttons.forEach(button => {
  button.addEventListener('click', () => {
    const buttonId = button.id; // Get the clicked element's ID
    let content; // Variable to store content based on button ID

    // Define content based on button IDs (replace with your actual content)
    switch (buttonId) {
      case "button1":
        content =  `<div class = "button-content">
         <h2>Content for Button 1</h2><p>This content appears when you click Button 1.</p>;
                  </div>`
        break;
      case "button2":
        content = `<h2>Content for Button 2</h2><p>This content appears when you click Button 2.</p>`;
        break;
      case "button3":
        content = `<h2>Content for Button 3</h2><p>This content appears when you click Button 3.</p>`;
        break;
      case "button4":
        content = `<h2>Content for Button 4</h2><p>This content appears when you click Button 4.</p>`;
        break;
      // Add similar cases for button3 and button4 (and any future buttons)
      default:
        content = "Invalid button clicked!"; // Optional default content for unexpected button IDs
    }

    contentArea.innerHTML = content; // Update content area with appropriate content
  });
});
