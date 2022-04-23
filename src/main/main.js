const {app, BrowserWindow} = require('electron')
const path = require('path')

function createWindow () {
  const mainWindow = new BrowserWindow({
    width: 3840,
    height: 2160,
    icon: '/resources/penpot.png',
    title: "Penpot",
    fullscreen: false,
    autoHideMenuBar: true,
    transparent: 'true',
    webPreferences: {
      preload: path.join(__dirname, 'src/renderer/preload.js')
    }
  })
  mainWindow.setMenuBarVisibility(false)
  mainWindow.loadURL('https://design.penpot.app')
}

app.whenReady().then(() => {
  createWindow()

  app.on('activate', function () {
    if (BrowserWindow.getAllWindows().length === 0) createWindow()
  })
})


app.on('window-all-closed', function () {
  if (process.platform !== 'darwin') app.quit()
})

