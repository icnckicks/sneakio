module SneakersHelper
    def tracking_url(sneaker)
        if sneaker.ups?
            "https://www.ups.com/track?track=yes&trackNums=#{sneaker.tracking_number}&loc=en_US&requester=ST/trackdetails"
        elsif sneaker.fedex?
            "https://www.fedex.com/fedextrack/?trknbr=#{sneaker.tracking_number}&trkqual=20240303000700~#{sneaker.tracking_number}~FXSP#{sneaker.tracking_number}"
        elsif sneaker.usps?
            "https://tools.usps.com/go/TrackConfirmAction?qtc_tLabels1=#{sneaker.tracking_number}"
        else
            "#"
        end
    end
end
