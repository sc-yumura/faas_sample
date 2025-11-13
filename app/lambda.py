import json
import os
import logging
import main

# Initialize the logger
logger = logging.getLogger()
logger.setLevel("INFO")


def lambda_handler(event, context):
    """
    Main Lambda handler function
    Parameters:
        event: Dict containing the Lambda function event data
        context: Lambda runtime context
    Returns:
        Dict containing status message
    """
    try:
        time = now()
        return {
            "statusCode": 200,
            "message": time
        }

    except Exception as e:
        logger.error(f"Error processing order: {str(e)}")
        raise