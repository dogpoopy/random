.class Landroid/support/v4/app/ActivityCompatApi21;
.super Ljava/lang/Object;
.source "ActivityCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallbackImpl;,
        Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCallback(Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;)Landroid/app/SharedElementCallback;
    .locals 1

    if-eqz p0, :cond_0

    .line 77
    new-instance v0, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallbackImpl;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallbackImpl;-><init>(Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static finishAfterTransition(Landroid/app/Activity;)V
    .locals 0

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method public static postponeEnterTransition(Landroid/app/Activity;)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    return-void
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;)V
    .locals 0

    .line 42
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompatApi21;->createCallback(Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;)Landroid/app/SharedElementCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;)V
    .locals 0

    .line 47
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompatApi21;->createCallback(Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;)Landroid/app/SharedElementCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    return-void
.end method
