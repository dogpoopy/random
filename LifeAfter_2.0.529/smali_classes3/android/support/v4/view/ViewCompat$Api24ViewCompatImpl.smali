.class Landroid/support/v4/view/ViewCompat$Api24ViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1810
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1814
    invoke-virtual {p2}, Landroid/support/v4/view/PointerIconCompat;->getPointerIcon()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1813
    :goto_0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatApi24;->setPointerIcon(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method
