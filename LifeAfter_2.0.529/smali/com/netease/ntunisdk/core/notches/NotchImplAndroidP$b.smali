.class final Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/Window;

.field private final d:[Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP;Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP$b;->a:Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP$b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP$b;->c:Landroid/view/Window;

    iput-object p4, p0, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP$b;->d:[Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP$b;->a:Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP$b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP$b;->c:Landroid/view/Window;

    iget-object v3, p0, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP$b;->d:[Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/ntunisdk/core/notches/NotchImplAndroidP;->justifyImpl(Landroid/content/Context;Landroid/view/Window;[Lcom/netease/ntunisdk/core/notches/NotchDevice$NotchAffectView;)V

    return-void
.end method
