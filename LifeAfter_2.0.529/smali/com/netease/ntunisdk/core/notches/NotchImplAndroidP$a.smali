.class final Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/Window;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP;Landroid/content/Context;Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP$a;->a:Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP$a;->c:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP$a;->a:Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP$a;->c:Landroid/view/Window;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP;->addStatusBarImpl(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method
