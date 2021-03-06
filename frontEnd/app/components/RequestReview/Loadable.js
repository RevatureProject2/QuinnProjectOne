/**
 *
 * Asynchronously loads the component for RequestReview
 *
 */

import Loadable from 'react-loadable';

export default Loadable({
  loader: () => import('./index'),
  loading: () => null,
});
