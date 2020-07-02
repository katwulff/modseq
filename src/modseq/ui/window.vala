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
	[GtkTemplate (ui = "/org/katwulff/modseq/ui/window.ui")]
	public class Window : Gtk.ApplicationWindow {
		private Modseq.App app;

		public Window(Gtk.Application app) {
			Object(application: app);
			this.app = app as Modseq.App;
			var icon_theme = Gtk.IconTheme.get_default();
			icon_theme.prepend_search_path(Config.PACKAGE_ICONDIR);
		}
	}
}
