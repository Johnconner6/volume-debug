import os
import runpod

def handler(job):
    job_input = job.get("input", {})
    result = {}
    result["volume_exists"] = os.path.exists("/runpod-volume")
    try:
        result["volume_contents"] = os.listdir("/runpod-volume")
    except Exception as e:
        result["volume_contents"] = str(e)
    try:
        result["models_contents"] = os.listdir("/runpod-volume/models")
    except Exception as e:
        result["models_contents"] = str(e)
    return result

runpod.serverless.start({"handler": handler})
