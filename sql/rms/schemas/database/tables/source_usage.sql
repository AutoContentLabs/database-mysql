-- source_usage.sql
-- Source kullanımı izleme tablosu
CREATE TABLE
    IF NOT EXISTS source_usage (
        usage_id INT AUTO_INCREMENT PRIMARY KEY,
        source_id INT NOT NULL,
        service_id INT NOT NULL,
        usage_count INT DEFAULT 0,
        usage_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        -- FOREIGN KEY (source_id) REFERENCES sources (source_id) ON DELETE CASCADE,
        -- FOREIGN KEY (service_id) REFERENCES services (service_id) ON DELETE CASCADE
    );

-- source_usage tablosu oluşturulurken aşağıdaki alanlara dikkat edilmiştir:
-- usage_id      : Benzersiz kimlik alanı (otomatik artan).
-- source_id     : Kullanılan kaynak kimliği.
-- service_id    : Kaynağı kullanan hizmetin kimliği.
-- usage_count   : Kaynak kullanım sayısı (örn. her kullanım için artırılabilir).
-- usage_date    : Kaynak kullanımının zamanı; varsayılan olarak mevcut tarih ve saati alır.