server: src/server.cpp include/cxxhttp/httpd.h include/ef.gy/cli.h \
  include/ef.gy/global.h include/cxxhttp/http.h \
  include/cxxhttp/network.h include/asio.hpp \
  include/asio/associated_allocator.hpp include/asio/detail/config.hpp \
  include/asio/detail/type_traits.hpp \
  include/asio/detail/push_options.hpp \
  include/asio/detail/pop_options.hpp \
  include/asio/associated_executor.hpp include/asio/is_executor.hpp \
  include/asio/detail/is_executor.hpp include/asio/system_executor.hpp \
  include/asio/detail/scheduler.hpp include/asio/error_code.hpp \
  include/asio/impl/error_code.ipp \
  include/asio/detail/local_free_on_block_exit.hpp \
  include/asio/detail/socket_types.hpp \
  include/asio/execution_context.hpp include/asio/detail/noncopyable.hpp \
  include/asio/detail/variadic_templates.hpp \
  include/asio/impl/execution_context.hpp \
  include/asio/detail/handler_type_requirements.hpp \
  include/asio/async_result.hpp include/asio/handler_type.hpp \
  include/asio/detail/scoped_ptr.hpp \
  include/asio/detail/service_registry.hpp include/asio/detail/mutex.hpp \
  include/asio/detail/null_mutex.hpp include/asio/detail/scoped_lock.hpp \
  include/asio/detail/impl/service_registry.hpp \
  include/asio/detail/impl/service_registry.ipp \
  include/asio/detail/throw_exception.hpp \
  include/asio/impl/execution_context.ipp \
  include/asio/detail/atomic_count.hpp \
  include/asio/detail/conditionally_enabled_event.hpp \
  include/asio/detail/conditionally_enabled_mutex.hpp \
  include/asio/detail/event.hpp include/asio/detail/null_event.hpp \
  include/asio/detail/impl/null_event.ipp \
  include/asio/detail/op_queue.hpp include/asio/detail/reactor_fwd.hpp \
  include/asio/detail/scheduler_operation.hpp \
  include/asio/detail/handler_tracking.hpp \
  include/asio/detail/impl/handler_tracking.ipp \
  include/asio/detail/thread_context.hpp \
  include/asio/detail/call_stack.hpp include/asio/detail/tss_ptr.hpp \
  include/asio/detail/null_tss_ptr.hpp \
  include/asio/detail/impl/scheduler.ipp \
  include/asio/detail/concurrency_hint.hpp \
  include/asio/detail/limits.hpp include/asio/detail/reactor.hpp \
  include/asio/detail/epoll_reactor.hpp \
  include/asio/detail/object_pool.hpp include/asio/detail/reactor_op.hpp \
  include/asio/detail/operation.hpp \
  include/asio/detail/select_interrupter.hpp \
  include/asio/detail/eventfd_select_interrupter.hpp \
  include/asio/detail/impl/eventfd_select_interrupter.ipp \
  include/asio/detail/cstdint.hpp include/asio/detail/throw_error.hpp \
  include/asio/detail/impl/throw_error.ipp include/asio/system_error.hpp \
  include/asio/error.hpp include/asio/impl/error.ipp \
  include/asio/detail/timer_queue_base.hpp \
  include/asio/detail/timer_queue_set.hpp \
  include/asio/detail/impl/timer_queue_set.ipp \
  include/asio/detail/wait_op.hpp \
  include/asio/detail/impl/epoll_reactor.hpp \
  include/asio/detail/impl/epoll_reactor.ipp \
  include/asio/detail/scheduler_thread_info.hpp \
  include/asio/detail/thread_info_base.hpp \
  include/asio/detail/thread_group.hpp include/asio/detail/thread.hpp \
  include/asio/detail/null_thread.hpp \
  include/asio/impl/system_executor.hpp \
  include/asio/detail/executor_op.hpp \
  include/asio/detail/fenced_block.hpp \
  include/asio/detail/null_fenced_block.hpp \
  include/asio/detail/handler_alloc_helpers.hpp \
  include/asio/detail/memory.hpp include/asio/handler_alloc_hook.hpp \
  include/asio/impl/handler_alloc_hook.ipp \
  include/asio/detail/handler_invoke_helpers.hpp \
  include/asio/handler_invoke_hook.hpp include/asio/detail/global.hpp \
  include/asio/detail/null_global.hpp \
  include/asio/detail/recycling_allocator.hpp \
  include/asio/impl/system_executor.ipp \
  include/asio/basic_datagram_socket.hpp include/asio/basic_socket.hpp \
  include/asio/basic_io_object.hpp include/asio/io_context.hpp \
  include/asio/detail/wrapped_handler.hpp \
  include/asio/detail/bind_handler.hpp \
  include/asio/detail/handler_cont_helpers.hpp \
  include/asio/handler_continuation_hook.hpp \
  include/asio/detail/chrono.hpp include/asio/impl/io_context.hpp \
  include/asio/detail/completion_handler.hpp \
  include/asio/detail/handler_work.hpp include/asio/impl/io_context.ipp \
  include/asio/post.hpp include/asio/impl/post.hpp \
  include/asio/detail/work_dispatcher.hpp \
  include/asio/executor_work_guard.hpp include/asio/socket_base.hpp \
  include/asio/detail/io_control.hpp \
  include/asio/detail/socket_option.hpp \
  include/asio/detail/reactive_socket_service.hpp \
  include/asio/buffer.hpp include/asio/detail/array_fwd.hpp \
  include/asio/detail/is_buffer_sequence.hpp \
  include/asio/detail/string_view.hpp \
  include/asio/detail/buffer_sequence_adapter.hpp \
  include/asio/detail/impl/buffer_sequence_adapter.ipp \
  include/asio/detail/reactive_null_buffers_op.hpp \
  include/asio/detail/reactive_socket_accept_op.hpp \
  include/asio/detail/socket_holder.hpp \
  include/asio/detail/socket_ops.hpp \
  include/asio/detail/impl/socket_ops.ipp include/asio/detail/assert.hpp \
  include/asio/detail/reactive_socket_connect_op.hpp \
  include/asio/detail/reactive_socket_recvfrom_op.hpp \
  include/asio/detail/reactive_socket_sendto_op.hpp \
  include/asio/detail/reactive_socket_service_base.hpp \
  include/asio/detail/reactive_socket_recv_op.hpp \
  include/asio/detail/reactive_socket_recvmsg_op.hpp \
  include/asio/detail/reactive_socket_send_op.hpp \
  include/asio/detail/reactive_wait_op.hpp \
  include/asio/detail/impl/reactive_socket_service_base.ipp \
  include/asio/basic_deadline_timer.hpp \
  include/asio/basic_raw_socket.hpp \
  include/asio/basic_seq_packet_socket.hpp \
  include/asio/basic_serial_port.hpp include/asio/basic_signal_set.hpp \
  include/asio/basic_socket_acceptor.hpp \
  include/asio/basic_socket_iostream.hpp \
  include/asio/basic_socket_streambuf.hpp \
  include/asio/basic_stream_socket.hpp include/asio/steady_timer.hpp \
  include/asio/basic_waitable_timer.hpp include/asio/wait_traits.hpp \
  include/asio/detail/chrono_time_traits.hpp \
  include/asio/detail/deadline_timer_service.hpp \
  include/asio/detail/timer_queue.hpp \
  include/asio/detail/date_time_fwd.hpp \
  include/asio/detail/timer_queue_ptime.hpp \
  include/asio/detail/timer_scheduler.hpp \
  include/asio/detail/timer_scheduler_fwd.hpp \
  include/asio/detail/wait_handler.hpp include/asio/basic_streambuf.hpp \
  include/asio/basic_streambuf_fwd.hpp include/asio/bind_executor.hpp \
  include/asio/uses_executor.hpp \
  include/asio/buffered_read_stream_fwd.hpp \
  include/asio/buffered_read_stream.hpp \
  include/asio/detail/buffer_resize_guard.hpp \
  include/asio/detail/buffered_stream_storage.hpp \
  include/asio/impl/buffered_read_stream.hpp \
  include/asio/buffered_stream_fwd.hpp include/asio/buffered_stream.hpp \
  include/asio/buffered_write_stream.hpp \
  include/asio/buffered_write_stream_fwd.hpp \
  include/asio/completion_condition.hpp include/asio/write.hpp \
  include/asio/impl/write.hpp \
  include/asio/detail/base_from_completion_cond.hpp \
  include/asio/detail/consuming_buffers.hpp \
  include/asio/detail/dependent_type.hpp \
  include/asio/impl/buffered_write_stream.hpp \
  include/asio/buffers_iterator.hpp include/asio/connect.hpp \
  include/asio/impl/connect.hpp include/asio/coroutine.hpp \
  include/asio/datagram_socket_service.hpp \
  include/asio/deadline_timer_service.hpp \
  include/asio/deadline_timer.hpp include/asio/defer.hpp \
  include/asio/impl/defer.hpp include/asio/dispatch.hpp \
  include/asio/impl/dispatch.hpp include/asio/executor.hpp \
  include/asio/detail/cstddef.hpp include/asio/impl/executor.hpp \
  include/asio/impl/executor.ipp include/asio/generic/basic_endpoint.hpp \
  include/asio/generic/detail/endpoint.hpp \
  include/asio/generic/detail/impl/endpoint.ipp \
  include/asio/generic/datagram_protocol.hpp \
  include/asio/generic/raw_protocol.hpp \
  include/asio/generic/seq_packet_protocol.hpp \
  include/asio/generic/stream_protocol.hpp \
  include/asio/io_context_strand.hpp \
  include/asio/detail/strand_service.hpp \
  include/asio/detail/impl/strand_service.hpp \
  include/asio/detail/impl/strand_service.ipp \
  include/asio/io_service.hpp include/asio/io_service_strand.hpp \
  include/asio/ip/address.hpp include/asio/ip/address_v4.hpp \
  include/asio/detail/array.hpp include/asio/detail/winsock_init.hpp \
  include/asio/ip/impl/address_v4.hpp \
  include/asio/ip/impl/address_v4.ipp include/asio/ip/address_v6.hpp \
  include/asio/ip/impl/address_v6.hpp \
  include/asio/ip/impl/address_v6.ipp \
  include/asio/ip/bad_address_cast.hpp include/asio/ip/impl/address.hpp \
  include/asio/ip/impl/address.ipp \
  include/asio/ip/address_v4_iterator.hpp \
  include/asio/ip/address_v4_range.hpp \
  include/asio/ip/address_v6_iterator.hpp \
  include/asio/ip/address_v6_range.hpp \
  include/asio/ip/basic_endpoint.hpp include/asio/ip/detail/endpoint.hpp \
  include/asio/ip/detail/impl/endpoint.ipp \
  include/asio/ip/impl/basic_endpoint.hpp \
  include/asio/ip/basic_resolver.hpp \
  include/asio/ip/basic_resolver_iterator.hpp \
  include/asio/ip/basic_resolver_entry.hpp \
  include/asio/ip/basic_resolver_query.hpp \
  include/asio/ip/resolver_query_base.hpp \
  include/asio/ip/resolver_base.hpp \
  include/asio/ip/basic_resolver_results.hpp \
  include/asio/detail/resolver_service.hpp \
  include/asio/detail/resolve_endpoint_op.hpp \
  include/asio/detail/resolve_op.hpp \
  include/asio/detail/resolve_query_op.hpp \
  include/asio/detail/resolver_service_base.hpp \
  include/asio/detail/impl/resolver_service_base.ipp \
  include/asio/ip/host_name.hpp include/asio/ip/impl/host_name.ipp \
  include/asio/ip/icmp.hpp include/asio/ip/multicast.hpp \
  include/asio/ip/detail/socket_option.hpp \
  include/asio/ip/resolver_service.hpp include/asio/ip/tcp.hpp \
  include/asio/ip/udp.hpp include/asio/ip/unicast.hpp \
  include/asio/ip/v6_only.hpp include/asio/is_read_buffered.hpp \
  include/asio/is_write_buffered.hpp \
  include/asio/local/basic_endpoint.hpp \
  include/asio/local/detail/endpoint.hpp \
  include/asio/local/detail/impl/endpoint.ipp \
  include/asio/local/connect_pair.hpp \
  include/asio/local/datagram_protocol.hpp \
  include/asio/local/stream_protocol.hpp include/asio/packaged_task.hpp \
  include/asio/placeholders.hpp include/asio/posix/basic_descriptor.hpp \
  include/asio/posix/basic_stream_descriptor.hpp \
  include/asio/posix/descriptor.hpp \
  include/asio/detail/reactive_descriptor_service.hpp \
  include/asio/detail/descriptor_ops.hpp \
  include/asio/detail/impl/descriptor_ops.ipp \
  include/asio/detail/descriptor_read_op.hpp \
  include/asio/detail/descriptor_write_op.hpp \
  include/asio/posix/descriptor_base.hpp \
  include/asio/detail/impl/reactive_descriptor_service.ipp \
  include/asio/posix/stream_descriptor.hpp \
  include/asio/posix/stream_descriptor_service.hpp \
  include/asio/raw_socket_service.hpp include/asio/read.hpp \
  include/asio/impl/read.hpp include/asio/read_at.hpp \
  include/asio/impl/read_at.hpp include/asio/read_until.hpp \
  include/asio/detail/regex_fwd.hpp include/asio/impl/read_until.hpp \
  include/asio/seq_packet_socket_service.hpp \
  include/asio/serial_port.hpp include/asio/serial_port_base.hpp \
  include/asio/impl/serial_port_base.hpp \
  include/asio/impl/serial_port_base.ipp \
  include/asio/detail/reactive_serial_port_service.hpp \
  include/asio/detail/impl/reactive_serial_port_service.ipp \
  include/asio/serial_port_service.hpp include/asio/signal_set.hpp \
  include/asio/detail/signal_set_service.hpp \
  include/asio/detail/signal_handler.hpp \
  include/asio/detail/signal_op.hpp \
  include/asio/detail/impl/signal_set_service.ipp \
  include/asio/detail/signal_blocker.hpp \
  include/asio/detail/null_signal_blocker.hpp \
  include/asio/detail/static_mutex.hpp \
  include/asio/detail/null_static_mutex.hpp \
  include/asio/signal_set_service.hpp \
  include/asio/socket_acceptor_service.hpp include/asio/strand.hpp \
  include/asio/detail/strand_executor_service.hpp \
  include/asio/detail/impl/strand_executor_service.hpp \
  include/asio/detail/impl/strand_executor_service.ipp \
  include/asio/stream_socket_service.hpp include/asio/streambuf.hpp \
  include/asio/thread.hpp include/asio/thread_pool.hpp \
  include/asio/impl/thread_pool.hpp include/asio/impl/thread_pool.ipp \
  include/asio/time_traits.hpp include/asio/use_future.hpp \
  include/asio/impl/use_future.hpp include/asio/version.hpp \
  include/asio/waitable_timer_service.hpp \
  include/asio/windows/basic_handle.hpp \
  include/asio/windows/basic_object_handle.hpp \
  include/asio/windows/basic_random_access_handle.hpp \
  include/asio/windows/basic_stream_handle.hpp \
  include/asio/windows/object_handle.hpp \
  include/asio/windows/object_handle_service.hpp \
  include/asio/windows/overlapped_handle.hpp \
  include/asio/windows/overlapped_ptr.hpp \
  include/asio/windows/random_access_handle.hpp \
  include/asio/windows/random_access_handle_service.hpp \
  include/asio/windows/stream_handle.hpp \
  include/asio/windows/stream_handle_service.hpp \
  include/asio/write_at.hpp include/asio/impl/write_at.hpp \
  include/cxxhttp/http-processor.h include/cxxhttp/negotiate.h \
  include/cxxhttp/mime-type.h include/cxxhttp/string.h \
  include/cxxhttp/http-constants.h include/cxxhttp/http-error.h \
  include/cxxhttp/http-header.h include/cxxhttp/http-grammar.h \
  include/cxxhttp/http-session.h include/cxxhttp/version.h \
  include/ef.gy/version.h include/cxxhttp/http-request.h \
  include/cxxhttp/uri.h include/cxxhttp/http-status.h \
  include/cxxhttp/http-servlet.h include/generator.h include/noise.h
pattern: src/pattern.cpp include/generator.h include/noise.h
