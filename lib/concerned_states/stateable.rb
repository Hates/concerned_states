module ConcernedStates
  module Stateable
    extend ActiveSupport::Concern

    PASSIVE   =  "passive"
    PENDING   =  "pending"
    DECLINED  =  "declined"
    APPROVED  =  "approved"
    INACTIVE  =  "inactive"
    ACTIVE    =  "active"
    FLAGGED   =  "flagged"
    SUSPENDED =  "suspended"
    ARCHIVED  =  "archived"
    DELETED   =  "deleted"
    STARTED   =  "started"
    PAUSED    =  "paused"
    CANCELLED =  "cancelled"
    COMPLETED =  "completed"
    ERRORED   =  "errored"

    included do
      scope :passive,
        where(:state => PASSIVE)

      scope :pending,
        where(:state => PENDING)

      scope :declined,
        where(:state => DECLINED)

      scope :approved,
        where(:state => APPROVED)

      scope :inactive,
        where(:state => INACTIVE)

      scope :active,
        where(:state => ACTIVE)

      scope :flagged,
        where(:state => FLAGGED)

      scope :suspended,
        where(:state => SUSPENDED)

      scope :archived,
        where(:state => ARCHIVED)

      scope :deleted,
        where(:state => DELETED)

      scope :started,
        where(:state => STARTED)

      scope :paused,
        where(:state => PAUSED)

      scope :cancelled,
        where(:state => CANCELLED)

      scope :completed,
        where(:state => COMPLETED)

      scope :errored,
        where(:state => ERRORED)
    end

    def passivate; self.state = PASSIVE; end
    def passivate!; update_attribute(:state, PASSIVE); end
    def passive?; self.state == PASSIVE; end

    def pendinate; self.state = PENDING; end
    def pendinate!; update_attribute(:state, PENDING); end
    def pending?; self.state == PENDING; end

    def decline; self.state = DECLINED; end
    def decline!; update_attribute(:state, DECLINED); end
    def declined?; self.state == DECLINED; end

    def approve; self.state = APPROVED; end
    def approve!; update_attribute(:state, APPROVE); end
    def approved?; self.state == APPROVED; end

    def inactivate; self.state = INACTIVE; end
    def inactivate!; update_attribute(:state, INACTIVE); end
    def inactive?; self.state == INACTIVE; end

    def activate; self.state = ACTIVE; end
    def activate!; update_attribute(:state, ACTIVE); end
    def active?; self.state == ACTIVE; end

    def flag; self.state = FLAGGED; end
    def flag!; update_attribute(:state, FLAGGED); end
    def flagged?; self.state == FLAGGED; end

    def suspend; self.state = SUSPENDED; end
    def suspend!; update_attribute(:state, SUSPENDED); end
    def suspended?; self.state == SUSPENDED; end

    def archive; self.state = ARCHIVED; end
    def archive!; update_attribute(:state, ARCHIVED); end
    def archived?; self.state == ARCHIVED; end

    def delete; self.state = DELETED; end
    def delete!; update_attribute(:state, DELETED); end
    def deleted?; self.state == DELETED; end

    def cancel; self.state = CANCELLED; end
    def cancel!; update_attribute(:state, CANCELLED); end
    def cancelled?; self.state == CANCELLED; end

    def start; self.state = STARTED; end
    def start!; update_attribute(:state, STARTED); end
    def started?; self.state == STARTED; end

    def pause; self.state = PAUSED; end
    def pause!; update_attribute(:state, PAUSE); end
    def paused?; self.state == PAUSED; end

    def cancel; self.state = CANCELLED; end
    def cancel!; update_attribute(:state, CANCELLED); end
    def canceled?; self.state == CANCELLED; end

    def complete; self.state = COMPLETED; end
    def complete!; update_attribute(:state, COMPLETED); end
    def completed?; self.state == COMPLETED; end

    def error; self.state = ERRORED; end
    def error!; update_attribute(:state, ERRORED); end
    def errored?; self.state == ERRORED; end

  end
end
