function drop_cache
    # Limpiar caché de RAM
    echo "Clearing RAM..."
    sudo sh -c "echo 3 > /proc/sys/vm/drop_caches && printf '\n%s\n' 'Ram-cache Cleared'"
    free -h

    # Preguntar al usuario si quiere limpiar la swap
    echo "Clear swap? (This will shutdown WSL) [y/N]: "
    read -n 1 confirmation
    echo ""

    if test (string lower "$confirmation") = y
        echo "Deactivating swap and shutting down WSL..."
        sudo swapoff -a
        wsl.exe --shutdown
    else
        echo "Swap was not modified."
    end
end
