function assert_all_tests_pass(results, stageName)

if ~all(results.Pass)
    failed=string(results.Test(~results.Pass));
    error('WaterProject:StageFailed','%s failed: %s',stageName,strjoin(failed,', '));
end
fprintf('%s: PASSED\n',stageName);
end
