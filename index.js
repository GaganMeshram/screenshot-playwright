const { chromium } = require('playwright');  // Use Playwright's Chromium browser

(async () => {
  // Launch Chromium browser
  const browser = await chromium.launch({
    headless: true,  // Run in headless mode (no UI)
    args: ['--no-sandbox', '--disable-setuid-sandbox'],  // Recommended args for cloud environments
  });

  // Create a new page
  const page = await browser.newPage();

  // Navigate to a URL
  await page.goto('https://www.rybelsus.com/');

  // Take a screenshot
  await page.screenshot({ path: 'example.png' });

  console.log('Screenshot taken successfully');

  // Close the browser
  await browser.close();
})();
