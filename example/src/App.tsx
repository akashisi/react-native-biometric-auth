import * as React from 'react';

import { StyleSheet, View, Text } from 'react-native';
import { authorize } from 'react-native-biometric-auth';

export default function App() {
  const [result, setResult] = React.useState<number | undefined>();

  React.useEffect(() => {
    authorize().then((res) => {
      setResult(res);
      console.log('res kkk-->', res);
    });
  }, []);

  return (
    <View style={styles.container}>
      <Text>Result: {result}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
