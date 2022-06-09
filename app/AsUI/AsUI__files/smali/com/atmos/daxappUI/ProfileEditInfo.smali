.class public Lcom/atmos/daxappUI/ProfileEditInfo;
.super Ljava/lang/Object;
.source "ProfileEditInfo.java"


# instance fields
.field public mEditText:Landroid/widget/EditText;

.field public mPosition:I

.field public mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(ILandroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/atmos/daxappUI/ProfileEditInfo;->mPosition:I

    .line 25
    iput-object p2, p0, Lcom/atmos/daxappUI/ProfileEditInfo;->mTextView:Landroid/widget/TextView;

    .line 26
    iput-object p3, p0, Lcom/atmos/daxappUI/ProfileEditInfo;->mEditText:Landroid/widget/EditText;

    .line 27
    return-void
.end method
