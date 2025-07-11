.class public Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;
.super Ljava/lang/Object;
.source "OnEnableDisableSessionDurationCheck.java"


# static fields
.field static final MIN_DURATION_FOR_ENABLE_DISABLE_SESSION:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "OnEnableDisableSessionDurationCheck"


# instance fields
.field private final mEnabledMinimumDuration:Z

.field private mOnEnableSessionTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    const-class v0, Landroidx/camera/extensions/internal/compat/quirk/CrashWhenOnDisableTooSoon;

    invoke-static {v0}, Landroidx/camera/extensions/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;->mOnEnableSessionTimeStamp:J

    .line 44
    iput-boolean p1, p0, Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;->mEnabledMinimumDuration:Z

    return-void
.end method

.method private ensureMinDurationAfterOnEnableSession()V
    .locals 6

    const-string v0, "OnEnableDisableSessionDurationCheck"

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;->mOnEnableSessionTimeStamp:J

    :goto_0
    sub-long/2addr v1, v3

    const-wide/16 v3, 0x64

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    sub-long/2addr v3, v1

    .line 83
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisableSession too soon, wait "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;->mOnEnableSessionTimeStamp:J

    goto :goto_0

    :catch_0
    const-string v1, "sleep interrupted"

    .line 86
    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDisableSessionInvoked()V
    .locals 1

    .line 60
    iget-boolean v0, p0, Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;->mEnabledMinimumDuration:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0}, Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;->ensureMinDurationAfterOnEnableSession()V

    :cond_0
    return-void
.end method

.method public onEnableSessionInvoked()V
    .locals 2

    .line 51
    iget-boolean v0, p0, Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;->mEnabledMinimumDuration:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/camera/extensions/internal/compat/workaround/OnEnableDisableSessionDurationCheck;->mOnEnableSessionTimeStamp:J

    :cond_0
    return-void
.end method
