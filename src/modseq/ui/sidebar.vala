/* Copyright 2020 Katharina Wulff
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

namespace Modseq.Ui {
	[GtkTemplate (ui = "/org/katwulff/modseq/ui/sidebar.ui")]
	public class Sidebar : Gtk.Stack {
		private string documents_path;
		private GLib.File documents_file;

		construct {
			documents_path = GLib.Environment.get_user_special_dir(GLib.UserDirectory.DOCUMENTS);
			documents_file = GLib.File.new_for_path(documents_path);
		}

		[CCode (instance_pos = -1)]
		[GtkCallback (name = "on_modseq_ui_sidebar_documents_click")]
		public bool on_documents_click(Gtk.Widget w, Gdk.EventButton e) {
			stdout.printf(documents_path);
			stdout.printf("\n");
			return true;
		}
	}
}
