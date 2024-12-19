{{flutter_js}}
{{flutter_build_config}}

const loading = document.querySelector('#loading');

// Track loading states
let mainLoaded = false;
let initDone = false;

// Update loading UI when main script is loaded
window.addEventListener('load', function(ev) {
  mainLoaded = true;
  loading.classList.add('main_done');
});

const serviceWorkerVersion = "1533062519";

_flutter.loader.load({
  onEntrypointLoaded: async function(engineInitializer) {
    const appRunner = await engineInitializer.initializeEngine();
    
    // Add init_done class before running the app
    loading.classList.add('init_done');
    initDone = true;
    
    // Hide loader after animation completes
    setTimeout(() => {
      loading.remove();
    }, 660); // Matches zooooom animation duration
    
    await appRunner.runApp();
  }
});