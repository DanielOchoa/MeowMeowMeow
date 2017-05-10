defmodule MeowMeowMeow.BucketTest do
  use ExUnit.Case, async: true

  test "stores values by key" do
    {:ok, bucket} = MeowMeowMeow.Bucket.start_link
    assert MeowMeowMeow.Bucket.get(bucket, "milk") == nil

    MeowMeowMeow.Bucket.put(bucket, "milk", 3)
    assert MeowMeowMeow.Bucket.get(bucket, "milk") == 3
  end
end
