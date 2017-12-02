require 'formula'

class I386ElfBinutils < Formula
  homepage 'http://gcc.gnu.org'
  url 'http://ftp.gnu.org/gnu/binutils/binutils-2.23.tar.gz'
  sha256 '7909a08eabdbaac0f7a22e9ede82a66ba70acd50629b045e705af864eef10b65'

  def install
    mkdir 'build' do
      system '../configure', '--disable-nls', '--target=i386-elf',
                             '--disable-werror',
                             "--prefix=#{prefix}"
      system 'make all'
      system 'make install'
      FileUtils.mv lib, libexec
    end
  end
end
