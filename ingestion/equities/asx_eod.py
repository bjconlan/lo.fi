import luigi

class AsxEodTask(luigi.Task):
  task_namespace = 'equities'

  def run(self):
    print('{task} says: Hello world!'.format(task=self.__class.__.__name__))


if __name__ == '__main__':
  luigi.run(['examples.AsxEodTask', '--workers', '1', '--local-scheduler'])