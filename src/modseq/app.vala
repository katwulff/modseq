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

namespace Modseq {
	class App : Gtk.Application {
		private const GLib.ActionEntry[] action_entries = {
			{"rewind", rewind},
			{"fast_forward", fast_forward},
			{"stop", stop},
			{"play", play},
			{"record", record},
			{"loop", loop},
			{"metronome", metronome},
			{"help", help},
			{"show-help", help},
		};
		private bool metronome_on;

		public App(string application_id, ApplicationFlags flags) {
			Object(
				application_id: application_id,
				flags: flags
			);
			add_action_entries(action_entries, this);
			resource_base_path = "/org/katwulff/modseq";
			metronome_on = false;
		}

		public void rewind() {
			stdout.printf("rewind\n");
		}

		public void fast_forward() {
			stdout.printf("fast_forward\n");
		}

		public void stop() {
			stdout.printf("stop\n");
		}

		public void play() {
			stdout.printf("play\n");
		}

		public void record() {
			stdout.printf("record\n");
		}

		public void loop() {
			stdout.printf("loop\n");
		}

		public void metronome() {
			stdout.printf("metronome\n");
		}

		public void help() {
			stdout.printf("help\n");
		}
	}
}
