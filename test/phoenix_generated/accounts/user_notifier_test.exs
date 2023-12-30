defmodule PhoenixGenerated.Accounts.UserNotifierTest do
  use ExUnit.Case, async: true
  import Swoosh.TestAssertions

  alias PhoenixGenerated.Accounts.UserNotifier

  test "deliver_welcome_user/1" do
    user = %{name: "Alice", email: "alice@example.com"}

    UserNotifier.deliver_welcome_user(user)

    assert_email_sent(
      subject: "Welcome to Phoenix, Alice!",
      to: {"Alice", "alice@example.com"},
      text_body: ~r/Hello, Alice/
    )
  end

  test "deliver_reset_password/1" do
    user = %{name: "Alice", email: "alice@example.com"}

    UserNotifier.deliver_reset_password(user)

    assert_email_sent(
      subject: "Welcome to Phoenix, Alice!",
      to: {"Alice", "alice@example.com"},
      text_body: ~r/Hello, Alice/
    )
  end

  test "deliver_confirmation_instructions/1" do
    user = %{name: "Alice", email: "alice@example.com"}

    UserNotifier.deliver_confirmation_instructions(user)

    assert_email_sent(
      subject: "Welcome to Phoenix, Alice!",
      to: {"Alice", "alice@example.com"},
      text_body: ~r/Hello, Alice/
    )
  end
end
