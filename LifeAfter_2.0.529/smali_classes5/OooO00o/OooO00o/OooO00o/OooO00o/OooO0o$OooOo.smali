.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOo;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooOo"
.end annotation


# instance fields
.field public final OooO0O0:Ljava/lang/Character$UnicodeBlock;


# direct methods
.method public constructor <init>(Ljava/lang/Character$UnicodeBlock;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OoooO0;-><init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO0OO;)V

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOo;->OooO0O0:Ljava/lang/Character$UnicodeBlock;

    return-void
.end method


# virtual methods
.method public OooO00o(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0o$OooOo;->OooO0O0:Ljava/lang/Character$UnicodeBlock;

    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
