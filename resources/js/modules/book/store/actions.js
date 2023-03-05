/* ============
 * Actions for the books module
 * ============
 *
 * The actions that are available on the
 * books module.
 */

import {
  BOOK_LIST,
} from './action-types';

export function list(payload) {
  return {
    type: BOOK_LIST,
    payload
  }
}