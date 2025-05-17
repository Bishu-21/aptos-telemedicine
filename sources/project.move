module MyModule::Telemedicine {

    use aptos_framework::signer;

    /// Prescription structure
    struct Prescription has store, key {
        doctor: address,
        patient: address,
        medication: vector<u8>, // Medicine name or code
        timestamp: u64,
    }

    /// Function to issue a prescription (only by doctor)
    public fun issue_prescription(doctor: &signer, patient: address, medication: vector<u8>, timestamp: u64) {
        let prescription = Prescription {
            doctor: signer::address_of(doctor),
            patient,
            medication,
            timestamp,
        };
        move_to(doctor, prescription);
    }

    /// Function to verify prescription by checking doctor's address
    public fun verify_prescription(doctor_addr: address): bool {
        exists<Prescription>(doctor_addr)
    }
}
