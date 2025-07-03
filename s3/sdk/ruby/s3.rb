require 'aws-sdk-s3'
require 'pry'
require 'securerandom'

bucket_name = ENV['BUCKET_NAME']
region = 'us-east-1'

client = Aws::S3::Client.new

# Create S3 bucket
resp = client.create_bucket({
  bucket: "my-cool-bucket"  # Name of the bucket
  create_bucket_configuration: {
    location_constraint: region  # Region for the bucket
  }
})
binding.pry


number_of_files = 1+ rand(6)
puts "number_of_files: #{number_of_files}"

number_of_files.times.each do |i|
    puts "i: #{i}"
    filename = "file_#{i}.txt"
    output_path = "/tmp/#{filename}"

    File.open(output_path, "w") do |f|
        f.write securerandom.uuid
    end

    File.open(outpath, 'rb') do |file|
        s3.put_object(
            bucket: bucket-name, 
            key: filename,
            body: f
        )
end