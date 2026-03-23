// ============================================
// श्रावस्ती ITI भिंगा अप्रेंटिस पोर्टल - JavaScript
// ============================================

// ITI Bhinga Jobs Data (Realistic Data)
const itiJobs = [
    {
        id: 1,
        title: "इलेक्ट्रीशियन अप्रेंटिस",
        company: "UPPCB - श्रावस्ती",
        location: "भिंगा इंडस्ट्रियल एरिया",
        stipend: "₹9000/महीना",
        duration: "12 महीने",
        seats: 25,
        trade: "Electrician",
        lastDate: "15 दिसंबर 2024",
        description: "ITI इलेक्ट्रीशियन पास 2022-2024। वायरिंग, मेंटेनेंस।",
        whatsapp: "919XXXXXXXXX"
    },
    {
        id: 2,
        title: "फिटर अप्रेंटिस",
        company: "Bharat Heavy Electricals Ltd",
        location: "नजदीकी यूनिट",
        stipend: "₹8500/महीना",
        duration: "12 महीने",
        seats: 20,
        trade: "Fitter",
        lastDate: "20 दिसंबर 2024",
        description: "मैकेनिकल फिटिंग, असेंबली वर्क। ITI फिटर पास।",
        whatsapp: "919XXXXXXXXX"
    },
    {
        id: 3,
        title: "वेल्डर (G&M) अप्रेंटिस",
        company: "Piping Project - Balrampur",
        location: "बलरामपुर (20km)",
        stipend: "₹8000/महीना",
        duration: "6 महीने",
        seats: 15,
        trade: "Welder",
        lastDate: "18 दिसंबर 2024",
        description: "GTAW, SMAW वेल्डिंग। ITI वेल्डर पास।",
        whatsapp: "919XXXXXXXXX"
    },
    {
        id: 4,
        title: "टर्नर अप्रेंटिस",
        company: "Auto Components Ltd",
        location: "श्रावस्ती",
        stipend: "₹8500/महीना",
        duration: "12 महीने",
        seats: 12,
        trade: "Turner",
        lastDate: "25 दिसंबर 2024",
        description: "CNC लेथ मशीन ऑपरेशन। ITI टर्नर।",
        whatsapp: "919XXXXXXXXX"
    },
    {
        id: 5,
        title: "मशीनीस्ट अप्रेंटिस",
        company: "श्रावस्ती डिस्ट्रिक्ट हॉस्पिटल",
        location: "जिला अस्पताल",
        stipend: "₹8200/महीना",
        duration: "12 महीने",
        seats: 10,
        trade: "Machinist",
        lastDate: "12 जनवरी 2025",
        description: "मेडिकल इक्विपमेंट मेंटेनेंस।",
        whatsapp: "919XXXXXXXXX"
    },
    {
        id: 6,
        title: "COPA अप्रेंटिस",
        company: "श्रावस्ती जिला प्रशासन",
        location: "कलेक्ट्रेट कार्यालय",
        stipend: "₹7500/महीना",
        duration: "12 महीने",
        seats: 8,
        trade: "COPA",
        lastDate: "30 दिसंबर 2024",
        description: "कंप्यूटर ऑपरेटर, डेटा एंट्री।",
        whatsapp: "919XXXXXXXXX"
    }
];

// Page Load पर सब कुछ Initialize
document.addEventListener('DOMContentLoaded', function() {
    // Counter Animation
    animateCounters();
    
    // Load Jobs
    displayJobs(itiJobs);
    
    // Navbar Scroll Effect
    window.addEventListener('scroll', navbarScrollEffect);
    
    // Form Submit
    document.getElementById('apprenticeForm').addEventListener('submit', handleFormSubmit);
    
    // Trade Cards Click
    document.querySelectorAll('.trade-card').forEach(card => {
        card.addEventListener('click', function() {
            const trade = this.dataset.trade;
            filterByTrade(trade);
        });
    });
    
    // Filters
    document.getElementById('tradeFilter').addEventListener('change', filterJobs);
});

// ============================================
// Counter Animation (Hero Stats)
function animateCounters() {
    const counters = document.querySelectorAll('.number');
    
    counters.forEach(counter => {
        const target = parseInt(counter.getAttribute('data-target'));
        const increment = target / 100;
        let current = 0;
        
        const updateCounter = () => {
            if (current < target) {
                current += increment;
                counter.textContent = Math.floor(current);
                setTimeout(updateCounter, 20);
            } else {
                counter.textContent = target;
            }
        };
        updateCounter();
    });
}

// ============================================
// Jobs Display
function displayJobs(jobs) {
    const container = document.getElementById('jobsGrid');
    if (!container) return;
    
    container.innerHTML = '';
    
    jobs.forEach(job => {
        const jobCard = createJobCard(job);
        container.innerHTML += jobCard;
    });
    
    // Apply Buttons को Events Add करो
    document.querySelectorAll('.apply-job').forEach(btn => {
        btn.addEventListener('click', function() {
            const jobTitle = this.dataset.job;
            applyForJob(jobTitle);
        });
    });
    
    document.querySelectorAll('.call-job').forEach(btn => {
        btn.addEventListener('click', function() {
            const whatsapp = this.dataset.whatsapp;
            window.open(`https://wa.me/${whatsapp}?text=ITI%20Bhinga%20Apprentice%20Job`);
        });
    });
}

function createJobCard(job) {
    return `
        <div class="job-card">
            <div class="job-header">
                <div>
                    <h3 class="job-title">${job.title}</h3>
                    <div class="job-meta">
                        <span class="company">${job.company}</span>
                        <span class="location">${job.location}</span>
                        <span class="seats">${job.seats} सीटें</span>
                    </div>
                </div>
                <div class="job-stipend">${job.stipend}</div>
            </div>
            <p class="job-description">${job.description}</p>
            <div class="job-footer">
                <div class="job-details">
                    <span><i class="fas fa-calendar-alt"></i> ${job.lastDate}</span>
                    <span><i class="fas fa-clock"></i> ${job.duration}</span>
                </div>
                <div class="job-actions">
                    <button class="job-btn apply-job" data-job="${job.title}">
                        <i class="fas fa-file-alt"></i> Apply
                    </button>
                    <button class="job-btn call-job" data-whatsapp="${job.whatsapp}">
                        <i class="fab fa-whatsapp"></i> WhatsApp
                    </button>
                </div>
            </div>
        </div>
    `;
}

// ============================================
// Search & Filter
function filterJobs() {
    const tradeFilter = document.getElementById('tradeFilter').value;
    const searchTerm = document.getElementById('companySearch').value.toLowerCase();
    
    let filteredJobs = itiJobs.filter(job => {
        const matchesTrade = !tradeFilter || job.trade === tradeFilter;
        const matchesSearch = !searchTerm || 
            job.company.toLowerCase().includes(searchTerm) ||
            job.title.toLowerCase().includes(searchTerm);
        return matchesTrade && matchesSearch;
    });
    
    displayJobs(filteredJobs);
}

function filterByTrade(trade) {
    document.getElementById('tradeFilter').value = trade;
    filterJobs();
}

// ============================================
// Form Handling
function handleFormSubmit(e) {
    e.preventDefault();
    
    const formData = new FormData(e.target);
    const data = Object.fromEntries(formData);
    
    // WhatsApp Message Create
    const message = `🔧 ITI भिंगा अप्रेंटिस आवेदन\n\n` +
        `नाम: ${data.name}\n` +
        `मोबाइल: ${data.mobile}\n` +
        `ट्रेड: ${data.trade}\n` +
        `पासआउट: ${data.passout_year}\n` +
        `मार्क्स: ${data.marks}%\n` +
        `पता: ${data.address}\n\n` +
        `NAPS Registration करवा दें!`;
    
    // Success Message
    Swal.fire({
        icon: 'success',
        title: '✅ आवेदन प्राप्त!',
        text: '24 घंटे में WhatsApp पर कॉल आएगा। NAPS Portal पर भी Register करें।',
        confirmButtonText: 'NAPS Portal खोलें',
        confirmButtonColor: '#667eea'
    }).then((result) => {
        if (result.isConfirmed) {
            window.open('https://www.apprenticeshipindia.gov.in', '_blank');
        }
    });
    
    // Form Reset
    e.target.reset();
}

// ============================================
// Job Apply
function applyForJob(jobTitle) {
    const message = `ITI भिंगा से ${jobTitle} अप्रेंटिस के लिए आवेदन!\nITI पास, मार्कशीट तैयार।\nकृपया कॉल करें।`;
    
    Swal.fire({
        title: `📋 ${jobTitle}`,
        text: 'WhatsApp पर भेजें?',
        icon: 'question',
        showCancelButton: true,
        confirmButtonText: 'हाँ, भेजें',
        cancelButtonText: 'नहीं'
    }).then((result) => {
        if (result.isConfirmed) {
            window.open(`https://wa.me/919XXXXXXXXX?text=${encodeURIComponent(message)}`);
        }
    });
}

// ============================================
// Navbar Scroll Effect
function navbarScrollEffect() {
    const navbar = document.querySelector('.navbar');
    if (window.scrollY > 100) {
        navbar.style.background = 'rgba(30, 60, 114, 0.95)';
        navbar.style.backdropFilter = 'blur(20px)';
    } else {
        navbar.style.background = 'linear-gradient(135deg, #1e3c72 0%, #2a5298 100%)';
        navbar.style.backdropFilter = 'none';
    }
}

// ============================================
// Mobile Menu Toggle
document.querySelector('.hamburger').addEventListener('click', function() {
    document.querySelector('.nav-menu').classList.toggle('active');
    this.classList.toggle('active');
});

// Trade Cards Hover Effect
document.querySelectorAll('.trade-card').forEach((card, index) => {
    card.style.animationDelay = `${index * 0.1}s`;
});

// Auto Refresh Jobs (Demo)
setInterval(() => {
    // Add new job simulation
    console.log('🔄 Jobs Updated');
}, 300000); // 5 minutes

// SweetAlert2 CDN (Optional - for better alerts)
const script = document.createElement('script');
script.src = 'https://cdn.jsdelivr.net/npm/sweetalert2@11';
document.head.appendChild(script);