.class Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckItem;
.super Ljava/lang/Object;
.source "ShortcutUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/shortcuts/ShortcutUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckItem"
.end annotation


# instance fields
.field final checkCode:I

.field final checkKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckItem;->checkKey:Ljava/lang/String;

    .line 234
    iput p2, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils$CheckItem;->checkCode:I

    return-void
.end method
