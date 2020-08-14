const puppeteer = require("puppeteer");

async function getPageInstance() {
    try {
        const browser = await puppeteer.launch({
            defaultViewport: null,
            headless: false,
            args: ["--no-sandbox"],
        });
        const pages = await browser.pages();
        return pages[0];
    } catch (error) {
        throw new Error(error);
    }
}

(async () => {
    const page = await getPageInstance();
    await page.goto("https://naver.com");
    await page.waitFor("title");
    const title = await page.$eval("title", (node) => node.innerText);
    console.log(title);
    process.exit(0);
})();
