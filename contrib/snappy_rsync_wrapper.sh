#!/bin/sh

case "$SSH_ORIGINAL_COMMAND" in
	*\&* | *\;* | *\|*)
		echo "Access denied"
	;;
	rsync\ --server\ --sender*)
		$SSH_ORIGINAL_COMMAND
        ;;
	*)
		echo "Access denied"
	;;
esac
