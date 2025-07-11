.class final Lcom/netease/ntunisdk/core/security/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/core/security/a$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field final c:Lcom/netease/ntunisdk/core/security/a$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/core/security/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/ntunisdk/core/security/a;->b:Ljava/lang/String;

    new-instance p1, Lcom/netease/ntunisdk/core/security/a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/netease/ntunisdk/core/security/a$a;-><init>(Lcom/netease/ntunisdk/core/security/a;B)V

    iput-object p1, p0, Lcom/netease/ntunisdk/core/security/a;->c:Lcom/netease/ntunisdk/core/security/a$a;

    return-void
.end method
