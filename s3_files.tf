
resource "aws_s3_bucket_object" "codigo_spark" {

    bucket = aws_s3_bucket.datalake.id
    key = "emr-code/pyspark/job_spark_from_tf.py"
    acl = "private"
    source = "to_parquet2.py"
    etag = filemd5("to_parquet2.py")
}